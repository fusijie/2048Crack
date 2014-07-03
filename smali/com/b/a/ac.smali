.class public final Lcom/b/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/ao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/ao$aa;Ljava/lang/Runnable;)V
    .locals 6

    new-instance v0, Lcom/b/a/ad;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/ad;-><init>(Lcom/b/a/ac;Landroid/content/Context;Ljava/lang/String;Lcom/b/a/ao$aa;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/b/a/aq;->a(Landroid/os/AsyncTask;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
