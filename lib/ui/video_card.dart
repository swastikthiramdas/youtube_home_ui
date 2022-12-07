import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/model/video_model.dart';

Widget videoCard(VideoModel model) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                  image: DecorationImage(
                      image: NetworkImage(model.thumnail!), fit: BoxFit.fill),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black87,
                  ),
                  child: Text(
                    model.videoDuration!,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(model.avatar!),
                radius: 28,
              ),
              SizedBox(width: 6),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.videoTitle!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2),
                    Text("${model.channel} - ${model.views}")
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    ),
  );
}
