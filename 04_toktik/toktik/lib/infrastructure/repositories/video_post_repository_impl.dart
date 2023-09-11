
import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostDataRepositoryImpl implements VideoPostRepository
{

  final VideoPostDataSource videosDataSource;

  VideoPostDataRepositoryImpl({
    required this.videosDataSource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosPage(int page) 
  {
    return videosDataSource.getTrandingVideosPage(page);
  }



}