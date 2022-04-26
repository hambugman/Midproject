package vlog.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.config.SqlMapClientFactory;
import vlog.vo.GalleryVo;

public class GalleryDaoImpl implements IGalleryDao {
	
	private SqlMapClient smc;
	private static IGalleryDao dao;
	
	private GalleryDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IGalleryDao getGalleryDao() {
		if(dao == null) dao = new GalleryDaoImpl();
		return dao;
	}

	@Override
	public int galleryInsert(GalleryVo vo) throws SQLException {
		
		return (int)smc.insert("gallery.galleryInsert", vo);
	}

	@Override
	public int galleryUpdate(GalleryVo vo) throws SQLException {
		
		return (int)smc.update("gallery.galleryUpdate", vo);
	}

	@Override
	public List<GalleryVo> allGallery(String orp) throws SQLException {
		
		return smc.queryForList("gallery.allGallery", orp);
	}

	@Override
	public GalleryVo detailGallery(int no) throws SQLException {
		
		return (GalleryVo) smc.queryForObject("gallery.detailGallery", no);
	}

	@Override
	public int galleryDelete(int no) throws SQLException {
		
		return (int)smc.delete("gallery.galleryDelete", no);
	}

}
