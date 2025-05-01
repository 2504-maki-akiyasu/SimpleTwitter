package chapter6.service;

import java.util.logging.Logger;

import chapter6.logging.InitApplication;

public class CommentService {
		/**
		* ロガーインスタンスの生成
	   	*/
		Logger log = Logger.getLogger("twitter");

		/**
    	* デフォルトコンストラクタ
    	* アプリケーションの初期化を実施する。
    	*/

    	public CommentService() {
    		InitApplication application = InitApplication.getInstance();
    		application.init();

    	}

}