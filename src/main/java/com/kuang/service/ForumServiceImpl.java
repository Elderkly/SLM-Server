package com.kuang.service;

import com.kuang.dao.ForumMapper;
import com.kuang.pojo.Forum;

import java.util.List;

public class ForumServiceImpl implements ForumService{
    private ForumMapper forumMapper;

    public void setForumMapper(ForumMapper forumMapper) {this.forumMapper = forumMapper;}
    @Override
    public int addForum(Forum forum) {
        return forumMapper.addForum(forum);
    }

    @Override
    public int deleteForum(int forumID) {
        return forumMapper.deleteForum(forumID);
    }

    @Override
    public List<Forum> selectAllForum() {
        return forumMapper.selectAllForum();
    }

    @Override
    public List<Forum> selectForumByUserID(int userID) {
        return forumMapper.selectForumByUserID(userID);
    }

    @Override
    public List<Forum> selectHomeForum() {
        return forumMapper.selectHomeForum();
    }
}
