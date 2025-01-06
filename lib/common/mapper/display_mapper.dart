import 'package:cafe_and_book/dto/book_dto.dart';
import 'package:cafe_and_book/dto/bookcafe_dto.dart';
import 'package:cafe_and_book/dto/bookcafe_thumbnail_dto.dart';
import 'package:cafe_and_book/model/book_model.dart';
import 'package:cafe_and_book/model/bookcafe_model.dart';

extension BookExtension on BookDto {
  BookModel toModel() {
    return BookModel(
      title: title,
      link: link,
      image: image,
      author: author,
      discount: discount,
      publisher: publisher,
      pubdate: pubdate,
      isbn: isbn,
      description: description,
      addDateTime: null,
    );
  }
}

extension BookCafeExtension on BookCafeDto {
  BookCafeModel toModel() {
    return BookCafeModel(
        bookCafeName: title,
        address: address,
        roadAddress: roadAddress,
        mapx: mapx,
        mapy: mapy);
  }
}

extension BookCafeThumbnailExtension on BookCafeThumbnailListDto {
  BookCafeModel toModel() {
    return BookCafeModel(
      thumbnails: thumbnailDto.map((thumbnail) => thumbnail.link).toList(),
    );
  }
}
