package com.kuang.service;

import com.kuang.pojo.Forum;

import java.util.List;

public interface ForumService {
    int addForum(Forum forum);
    int deleteForum(int forumID);
    List<Forum> selectAllForum();
    List<Forum> selectForumByUserID(int userID);
}
