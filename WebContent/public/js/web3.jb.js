class JB {
    constructor(provider, port, abi, addr) {
        Web3 = require('web3');
        this.provider = 'http://'.concat(provider, ':', port);
        this.web3 = new Web3(new Web3.providers.HttpProvider(this.provider));
        this.contract = this.web3.eth.contract(abi).at(addr);
    }

    unlockAccount(account, passphrase, callback) {
        $.ajax({
            url: this.provider,
            type: 'post',
            datatype: 'application/json',
            contentType: 'application/json',
            dataType: 'JSON',
            data: JSON.stringify({
                id: 8,
                jsonrpc: '2.0',
                method: 'personal_unlockAccount',
                params: [account, passphrase]
            }),
            success: function(data) {
                if(data.result == true) {
                    callback(null);
                } else {
                    callback('fail auth');
                }
            },
            error: function(error) {
                callback(error);
            }
        });
    }

    saveSoaxml(callback) {
        bxfXmlSaveCspPrepare();
        bxfSearchTextPrepare();
    
        var url = new URL($(location).attr('href'));
        var xmlPath = $('<input/>', {
            name: 'xmlPath',
            type: 'hidden',
            value: url.searchParams.get('xmlPath')
        });
    
        var form = $('form');
        form.append(xmlPath);
        form.append($('<input/>', {
            name: 'account',
            type: 'hidden',
            value: $('#account').val()
        }));
        form.append($('<input/>', {
        	name: 'accountPatient',
        	type: 'hidden',
        	value: $('#accountPatient').val()
        }));
        form.append($('<input/>', {
        	name: 'formCategory',
        	type: 'hidden',
        	value: $('#formCategory').val()
        }));
        
        form.attr('action', '../soaxmlSave.jsp');
        form.attr('method', 'post');
        form.submit();
        callback(null);
    }
    
    checkXml() {
    	var url = window.location.pathname;
    	var xhttp = new XMLHttpRequest();
    	xhttp.open('GET', url.substring(url.lastIndexOf('/')+1), true);
    	xhttp.send();
    	
    	xhttp.onreadystatechange = function(){
    		if(this.readyState == 4) {
    			if(this.status == 200) {
    				var xmlHash = jb.web3.sha3(xhttp.responseText.trim());
    				
    				console.log('xml', xmlHash);
    				try {
    					if(jb.contract.getContract(xmlHash)[3] != url.substring(url.lastIndexOf('/')+1)) {    					
        					alert('변조된 문서입니다.');
        				}
    				} catch(e) {
    					alert('변조된 문서입니다.');
    				}	
            	}
            }
    	}
    };
}

var abi = [{"constant":true,"inputs":[{"name":"_contractType","type":"uint256"}],"name":"sendContracts","outputs":[{"name":"","type":"bytes32[]"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"recvAllContracts","outputs":[{"name":"","type":"bytes32[]"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_dst","type":"address"},{"name":"_contractType","type":"uint256"},{"name":"_contractFile","type":"string"},{"name":"_contractHash","type":"bytes32"}],"name":"issue","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"_contractHash","type":"bytes32"}],"name":"isExist","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_contractHash","type":"bytes32"}],"name":"getContract","outputs":[{"name":"","type":"address"},{"name":"","type":"address"},{"name":"","type":"uint256"},{"name":"","type":"string"},{"name":"","type":"bytes32"},{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"sendAllContracts","outputs":[{"name":"","type":"bytes32[]"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"_contractType","type":"uint256"}],"name":"recvContracts","outputs":[{"name":"","type":"bytes32[]"}],"payable":false,"stateMutability":"view","type":"function"}];
var addr = '0x183dB87400531f2937857082f62FC7A98d375e37';
var jb = new JB('192.168.56.101', 8545, abi, addr);

function saveSoaxml() {
	if(jb.web3.eth.accounts.indexOf($('#accountPatient').val()) == -1){
		alert('입력된 환자의 정보가 올바르지 않습니다.');
		return;		
	}
	jb.unlockAccount($('#account').val(), $('#passphrase').val(), function(error) {
		if(error == 'fail auth') {
			alert('입력된 의사의 정보가 올바르지 않습니다.');
		} else if(error) {
			throw error;
		} else {
			jb.saveSoaxml(function(error) {
				if(error) throw error;
			});
		}
	});
}

function qr(url) {
	return 'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=' + url;
}

$(function(){
	if($('#account')[0] !== undefined) {		
		$('#account').autocomplete({
			source: jb.web3.eth.accounts
		});
	}
	if($('#accountPatient')[0] !== undefined) {		
		$('#accountPatient').autocomplete({
			source: jb.web3.eth.accounts
		});
	}
});