package org.app.utils;

import org.springframework.cglib.core.DebuggingClassWriter;

public class AuthUtils {
    public static final int QUERY = 2; // 110 means
    public static final int EDIT = 4;
    public static final int ROOT = 7;

    public static final int AUTH = 7;

    public static final int MODULE_NUMBER = 5;
    public static String STTING_ZERO = "00000";
    public static final int SAINPUT_AUTH = 1;
    public static final int CARLOAD_AUTH = 2;
    public static final int BILL_AUTH = 3;
    public static final int INCOME_AUTH = 4;
    public static final int SUMMARY_AUTH = 5;
    public static String[] authArray = { "0", "0", "0", "0", "0" };

    public static final boolean DEBUG = false;
    public static String[] urlParam = { "" };

    public static boolean getModuleBehaviorAuth(int roleLevel, String url) {
        if (DEBUG) {
            return true;
        }

        int module = 0;
        int behavior = 5;
        urlParam = url.split("/");
        switch (urlParam[1]) {
        case "bill":
            module = BILL_AUTH;
            break;
        case "carload":
            module = CARLOAD_AUTH;
            break;
        case "sainput":
            module = SAINPUT_AUTH;
            break;
        case "summary":
            module = SUMMARY_AUTH;
            break;
        case "income":
            module = INCOME_AUTH;
            break;
        default:
            return true;
        }
        int authNo = Character.getNumericValue(String.valueOf(roleLevel).charAt(module - 1));
        String authStr = Integer.toBinaryString(authNo);
        switch (urlParam[2]) {
        case "query":
        case "print":
            behavior = QUERY;
            break;
        case "edit":
        case "insert":
        case "delete":
            behavior = EDIT;
            break;
        case "root":
            behavior = ROOT;
            break;
        default:
            return true;
        }
        return authNo >= behavior;
        // if (authStr.length() < MODULE_NUMBER) {
        // authStr = STTING_ZERO.substring(0, MODULE_NUMBER - authStr.length())
        // + authStr;
        // }
        // return authStr.substring(MODULE_NUMBER - behavior - 1, MODULE_NUMBER
        // - behavior).equalsIgnoreCase("1");
    }

    public static int getModuleAuth(int roleLevel, int module) {
        return Character.getNumericValue(String.valueOf(roleLevel).charAt(module - 1));
//        int authNo = (int) (roleLevel % (Math.pow(10, module))) / 10;
//        String authStr = Integer.toBinaryString(authNo);
//        if (authStr.length() < MODULE_NUMBER) {
//            authStr = STTING_ZERO.substring(0, MODULE_NUMBER - authStr.length()) + authStr;
//        }
//        for (int i = 0; i < MODULE_NUMBER; i++) {
//            authArray[i] = authStr.substring(i, i + 1);
//        }
//        return authArray;
    }

    public static int setMouduleAuth(int module, int moduleLevel, int roleLevel) {
        StringBuffer level = new StringBuffer(String.valueOf(roleLevel));
        level.replace(module - 1, module, String.valueOf(moduleLevel));
        return Integer.parseInt(level.toString());
    }

    public static void main(String[] args) {
        // String[] carAuth = getModuleAuth(715, CARLOAD_AUTH);
        // for (String string : carAuth) {
        // System.err.println(string);
        // }
        int i = setMouduleAuth(CARLOAD_AUTH, 7, 71571);
        System.out.println(i);
    }
}
