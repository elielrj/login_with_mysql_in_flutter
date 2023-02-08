abstract class ICrud<T> {
  create(T object);

  update(T object);

  T retrive(int idObject);

  List<T> retriveAll(int idObject);

  delete(T object);
}
