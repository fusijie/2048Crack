.class public final Lcom/b/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/ao;


# instance fields
.field private a:Lcom/b/a/aq$ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/aj;)Lcom/b/a/aq$ab;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aj;->a:Lcom/b/a/aq$ab;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/ao$aa;Ljava/lang/Runnable;)V
    .locals 6

    new-instance v0, Lcom/b/a/ak;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/ak;-><init>(Lcom/b/a/aj;Ljava/lang/String;Landroid/content/Context;Lcom/b/a/ao$aa;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/b/a/aq;->a(Landroid/os/AsyncTask;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
