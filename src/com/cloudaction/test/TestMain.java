package com.cloudaction.test;

import com.cloudaction.model.CloudUser;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JettisonMappedXmlDriver;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;

public class TestMain {
	public static void main(String[] args) {
		XStream xStream = new XStream();
		CloudUser user = new CloudUser();
		user.setId(123);
		user.setUserNick("viky");
		user.setUserName("cici");
		user.setEmail("111@qq.com");
		xStream.alias("user", CloudUser.class);
		System.out.println(xStream.toXML(user));
	}
}
