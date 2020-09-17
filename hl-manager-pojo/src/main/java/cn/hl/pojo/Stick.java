package cn.hl.pojo;

import java.util.Date;

/**
 * 发帖
 * @author Administrator
 *
 */
public class Stick{

	private String id;
	private String isDel;
	private String statu;
	private Date createDate;
	private String userId;
	private String title;//标题
	private String like;//点赞
	private String collect;//收藏
	private String stickType;//类型
	private String stickMoney;//赏金
	private String stickOpenPublic;//是否公开0 公开 1不公开
	private String stickDiscuss;//评论
	private String content;//内容
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLike() {
		return like;
	}
	public void setLike(String like) {
		this.like = like;
	}
	public String getCollect() {
		return collect;
	}
	public void setCollect(String collect) {
		this.collect = collect;
	}
	public String getStickType() {
		return stickType;
	}
	public void setStickType(String stickType) {
		this.stickType = stickType;
	}
	public String getStickMoney() {
		return stickMoney;
	}
	public void setStickMoney(String stickMoney) {
		this.stickMoney = stickMoney;
	}
	public String getStickOpenPublic() {
		return stickOpenPublic;
	}
	public void setStickOpenPublic(String stickOpenPublic) {
		this.stickOpenPublic = stickOpenPublic;
	}
	public String getStickDiscuss() {
		return stickDiscuss;
	}
	public void setStickDiscuss(String stickDiscuss) {
		this.stickDiscuss = stickDiscuss;
	}
	
}
