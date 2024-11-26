enum ResponseStatusCodeEnum {
  ok(200),
  created(201),
  noContent(204),

  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404);

  final int code;

  const ResponseStatusCodeEnum(this.code);
}
