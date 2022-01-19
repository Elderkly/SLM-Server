package com.kuang.service;

import com.kuang.pojo.Commit;

import java.util.List;

public interface CommitService {
    int addCommit(Commit commit);
    int deleteCommit(int commitID);
    List<Commit> selectCommitByBaseID(int baseID,String commitType);
}
