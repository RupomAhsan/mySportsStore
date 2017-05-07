import { MySportsStorePage } from './app.po';

describe('my-sports-store App', () => {
  let page: MySportsStorePage;

  beforeEach(() => {
    page = new MySportsStorePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
