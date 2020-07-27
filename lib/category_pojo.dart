class CategoryPojo {
  int _id;
  String _blogTitle;
  String _blogContent;
  String _blogImage;

  CategoryPojo(this._id, this._blogTitle, this._blogContent, this._blogImage);

  set id(int id) {
    id = this._id;
  }

  set blogTitle(String blogTitle) {
    blogTitle = this._blogTitle;
  }

  set blogContent(String blogContent) {
    blogContent = this._blogContent;
  }

  set blogImage(String blogImage) {
    blogImage = this._blogImage;
  }

  int get id => this._id;

  String get blogTitle => this._blogTitle;

  String get blogContent => this._blogContent;

  String get blogImage => this._blogImage;
}
