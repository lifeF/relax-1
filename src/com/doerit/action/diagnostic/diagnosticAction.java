package com.doerit.action.diagnostic;

import com.doerit.action.AbstractDownloadManamentAction;

public class diagnosticAction  extends AbstractDownloadManamentAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String open()  {
		System.out.print("i'm in run");
		return "success";
	}

}
