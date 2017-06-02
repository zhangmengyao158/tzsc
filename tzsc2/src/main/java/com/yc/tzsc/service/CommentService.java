package com.yc.tzsc.service;

import java.util.List;

import com.yc.tzsc.entity.Comments;
import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;

public interface CommentService {


	List<Comments> getCommentsByCommodityId(Comments comments);
	
	boolean insertComments(Comments comments);

}
