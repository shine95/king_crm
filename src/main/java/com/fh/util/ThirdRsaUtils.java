package com.fh.util;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
/**
 * @ClassName: ThirdRsaUtils
 * @Description: TODO 第三方加密解密工具(万卡)
 * @author: hayder
 * @date: 2018年11月06日
 */
public class ThirdRsaUtils {

    public final String public_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCFiHRcEMQy3Tpgl" +
            "O0OrbvVPJrM/DnbogDyM1ZUhS8mj7064TbwnptAInOAxjNep8aX6WlBtYlVJGo+6EYreacql" +
            "WXE0BwdVMCVcdL9WJrI5qBRgLpgYbop8+bxrWvTRHgPusXNsvorEBHh4YPgAC/d6iXb+55TQVKBX+xKwZWcNQIDAQAB";

    /**
     *  @title 玖富万卡公钥加密
     * @param publicKey
     * @param data
     *  @return base64String
     * */
    public String encrypt(PublicKey publicKey, String data) throws Exception{

        byte[] mobilebyte=data.getBytes();

        String base64String = null;
        if(publicKey== null){
            throw new Exception("加密公钥为空, 请设置");
        }
        Cipher cipher= null;
        try {
            cipher= Cipher.getInstance("RSA");
            cipher.init(Cipher.ENCRYPT_MODE, publicKey);
            byte[] output= cipher.doFinal(mobilebyte);
            base64String = new BASE64Encoder().encodeBuffer(output);
        } catch (NoSuchAlgorithmException e) {
            throw new Exception("无此加密算法");
        } catch (NoSuchPaddingException e) {
            e.printStackTrace();
        }catch (InvalidKeyException e) {
            throw new Exception("加密公钥非法,请检查");
        } catch (IllegalBlockSizeException e) {
            throw new Exception("明文长度非法");
        } catch (BadPaddingException e) {
            throw new Exception("明文数据已损坏");
        }
        return base64String;//为最终加密的手机号
    }

    /**
     *  @title 玖富万卡公钥还原
     * @param public_key
     *  @return publicKey
     * */
    public PublicKey getPublicKey(String public_key) throws Exception{
        try {
            BASE64Decoder base64Decoder= new BASE64Decoder();
            byte[] buffer= base64Decoder.decodeBuffer(public_key);
            X509EncodedKeySpec keySpec= new X509EncodedKeySpec(buffer);
            KeyFactory keyFactory= KeyFactory.getInstance("RSA");
            PublicKey publicKey = keyFactory.generatePublic(keySpec);
            return publicKey;
        } catch (NoSuchAlgorithmException e) {
            throw new Exception("无此算法");
        } catch (InvalidKeySpecException e) {
            throw new Exception("公钥非法");
        } catch (IOException e) {
            throw new Exception("公钥数据内容读取错误");
        } catch (NullPointerException e) {
            throw new Exception("公钥数据为空");
        }
    }

    public static String beginEncrypt( String data ) throws Exception {
        ThirdRsaUtils tru = new ThirdRsaUtils();
        PublicKey publicKey = tru.getPublicKey(tru.public_key);
        return tru.encrypt(publicKey, data);
    }

}