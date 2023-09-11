
import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSource
{

  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);
  Future<List<VideoPost>> getTrandingVideosPage(int page);


}