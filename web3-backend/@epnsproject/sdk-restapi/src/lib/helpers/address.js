"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getCAIPAddress = exports.getFallbackETHCAIPAddress = exports.getCAIPDetails = exports.validateCAIP = exports.isValidETHAddress = void 0;
const ethers = require("ethers");
const constants_1 = require("../constants");
function isValidETHAddress(address) {
    return ethers.utils.isAddress(address);
}
exports.isValidETHAddress = isValidETHAddress;
const AddressValidators = {
    // Ethereum
    'eip155': ({ address }) => {
        return isValidETHAddress(address);
    }
    // Add other chains here
};
function validateCAIP(addressInCAIP) {
    const [blockchain, networkId, address] = addressInCAIP.split(':');
    if (!blockchain)
        return false;
    if (!networkId)
        return false;
    if (!address)
        return false;
    const validatorFn = AddressValidators[blockchain];
    return validatorFn({ address });
}
exports.validateCAIP = validateCAIP;
function getCAIPDetails(addressInCAIP) {
    if (validateCAIP(addressInCAIP)) {
        const [blockchain, networkId, address] = addressInCAIP.split(':');
        return {
            blockchain,
            networkId,
            address
        };
    }
    return null;
}
exports.getCAIPDetails = getCAIPDetails;
function getFallbackETHCAIPAddress(env, address) {
    let chainId = 1; // by default PROD
    if (env === constants_1.default.ENV.DEV || env === constants_1.default.ENV.STAGING) {
        chainId = 42;
    }
    return `eip155:${chainId}:${address}`;
}
exports.getFallbackETHCAIPAddress = getFallbackETHCAIPAddress;
/**
 * This helper
 *  checks if a VALID CAIP
 *    return the CAIP
 *  else
 *    check if valid ETH
 *      return a CAIP representation of that address (EIP155 + env)
 *    else
 *      throw error!
 */
function getCAIPAddress(env, address, msg) {
    if (validateCAIP(address)) {
        return address;
    }
    else {
        if (isValidETHAddress(address)) {
            return getFallbackETHCAIPAddress(env, address);
        }
        else {
            throw Error(`Invalid Address! ${msg}`);
        }
    }
}
exports.getCAIPAddress = getCAIPAddress;
//# sourceMappingURL=address.js.map