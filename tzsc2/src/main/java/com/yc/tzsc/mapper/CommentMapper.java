package com.yc.tzsc.mapper;

import java.util.List;

import com.yc.tzsc.entity.Comments;
import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;

public interface CommentMapper {

	List<Comments> getCommentsByCommodityId(Comments comments);
	
	int insertComments(Comments comments);

}
