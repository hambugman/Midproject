package vlog.service;

import java.sql.SQLException;
import java.util.List;


import vlog.dao.GalleryDaoImpl;
import vlog.dao.IGalleryDao;
import vlog.service.IGalleryService;
import vlog.vo.GalleryVo;

public class GalleryServiceImpl implements IGalleryService {
	
	private IGalleryDao dao;
	public static IGalleryService service;
	
	private GalleryServiceImpl() {
		dao = GalleryDaoImpl.getGalleryDao();
	}
	
	public static IGalleryService getGalleryService() {
		if(service == null) service = new GalleryServiceImpl();
		return service;
	}

	@Override
	public int galleryInsert(GalleryVo vo) {
		int no = 0;
		try {
			no = dao.galleryInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public int galleryUpdate(GalleryVo vo) {
		int no = 0;
		try {
			no = dao.galleryUpdate(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return no;
	}

	@Override
	public List<GalleryVo> allGallery(String orp) {
		List<GalleryVo> list = null;
		try {
			list = dao.allGallery(orp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public GalleryVo detailGallery(int no) {
		GalleryVo vo = null;
		try {
			vo = dao.detailGallery(no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public int galleryDelete(int no) {
		int num= 0;
		try {
			num = dao.galleryDelete(no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}

}
