using { Attachments } from '@cap-js/attachments';

namespace sap.capire.bookshop;

entity Books  {
  key bookId : Integer;
 // key Id: Integer;
  descr  : String(50) default 'test';
  attachments : Composition of many Attachments;
}

entity Books_ID  {
  key ID : Integer;
  descr  : String(50) default 'test';
  attachments : Composition of many Attachments;
}
