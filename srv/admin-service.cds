using { sap.capire.bookshop as my } from '../db/schema';
service AdminService {
  @odata.draft.enabled
  entity Books as projection on my.Books;
  @odata.draft.enabled
  entity Books_ID as projection on my.Books_ID;
}
