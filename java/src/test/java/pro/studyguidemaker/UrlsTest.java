package pro.studyguidemaker;
public final class UrlsTest {
    public static void main(String[] args) {
        if (!Urls.homeUrl().equals("https://studyguidemaker.net/")) throw new AssertionError("home");
        if (!Urls.pageUrl("pricing").equals("https://studyguidemaker.net/pricing")) throw new AssertionError("page");
if (!Urls.sourceUrl("pdf").equals("https://studyguidemaker.net/from/pdf")) throw new AssertionError("extra");
        System.out.println("ok");
    }
}
