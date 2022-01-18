package com.kuang.dao;

import com.kuang.pojo.Forum;

import java.util.List;

public interface ForumMapper {
    int addForum(Forum forum);
    int deleteForum(int forumID);
    List<Forum> selectAllForum();
    List<Forum> selectForumByUserID(int userID);
}
