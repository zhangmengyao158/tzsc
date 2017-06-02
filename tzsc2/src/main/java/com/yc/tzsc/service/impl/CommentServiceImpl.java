package com.yc.tzsc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tzsc.entity.Comments;
import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;
import com.yc.tzsc.mapper.CommentMapper;
import com.yc.tzsc.mapper.IndexMapper;
import com.yc.tzsc.service.CommentService;
import com.yc.tzsc.service.IndexService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentMapper commentMapper;

  
	@Override
	public List<Comments> getCommentsByCommodityId(Comments comments) {
 		return commentMapper.getCommentsByCommodityId(comments);
	}
  
	@Override
	public boolean insertComments(Comments comments) {
		 
 		return commentMapper.insertComments(comments)>0;
	}

	 

	 

	 

	


}
