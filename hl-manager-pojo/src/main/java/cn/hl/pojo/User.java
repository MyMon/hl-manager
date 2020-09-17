package cn.hl.pojo;

import java.util.Date;

/**
 * 
 * @author Administrator
 *	用户信息
 */
public class User {

	private String id;
	private String userName;//登录名
	private String passWord;
	private Date createDate;//创建时间
	private Date userUpDate;//上次登录时间
	private String userUpCount;//登录次数
	private String name;//用户名
	private String token;
	private String userDetail;//个人信息
	private String headUrl;
	private String age;
	private String createDateString;
	
	public String getHeadUrl() {
		return headUrl;
	}
	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}
	public String getCreateDateString() {
		return createDateString;
	}
	public void setCreateDateString(String createDateString) {
		this.createDateString = createDateString;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		System.out.println("userName"+userName);
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUserUpDate() {
		return userUpDate;
	}
	public void setUserUpDate(Date userUpDate) {
		this.userUpDate = userUpDate;
	}
	public String getUserUpCount() {
		return userUpCount;
	}
	public void setUserUpCount(String userUpCount) {
		this.userUpCount = userUpCount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getUserDetail() {
		return userDetail;
	}
	public void setUserDetail(String userDetail) {
		this.userDetail = userDetail;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	
	
}
