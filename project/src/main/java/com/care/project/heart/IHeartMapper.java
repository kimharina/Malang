package com.care.project.heart;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IHeartMapper {

	int insertHeart(HeartDTO dto);

	void deleteHeart(HeartDTO dto);

	String getlikeUserId(int productNo);

	int[] getLikeProductNo(String userId);

	int getLikeProductCount(String userId);

	
}
