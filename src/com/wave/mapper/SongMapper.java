package com.wave.mapper;

import com.wave.po.Song;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("songMapper")
public interface SongMapper {
    public List<Song> selectSongsByIds(Integer[] id);
}
