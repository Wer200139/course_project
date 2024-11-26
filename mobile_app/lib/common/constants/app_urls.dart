abstract class AppUrls {
  static const urlSchema = 'https://';
  static const wsSchema = 'wss://';

  static const mainUrl = 'depl1.prod.sold.su/api';
  static const mainWs = 'depl1.prod.sold.su';

  static const mainUrlPort = '';
  static const mainWsPort = '';

  static String get path => '${AppUrls.urlSchema}${AppUrls.mainUrl}${AppUrls.mainUrlPort}/chats/get-attachment';
}