{ ... }:
{
  programs.newsboat = {
    enable = true;
    urls = [
      {
        tags = [ "programming" ];
        url = "https://hnrss.org/newest?points=100";
      }
      {
        tags = [ "programming" ];
        url = "https://lobste.rs/rss";
      }
      {
        tags = [ "news" ];
        url = "https://www.theguardian.com/world/rss";
      }
      {
        tags = [ "news" ];
        url = "http://www.abc.net.au/news/feed/51120/rss.xml";
      }
    ];
  };
}
