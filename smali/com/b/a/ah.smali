.class public final Lcom/b/a/ah;
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
    .locals 1

    new-instance v0, Lcom/b/a/ai;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/b/a/ai;-><init>(Lcom/b/a/ah;Lcom/b/a/ao$aa;Ljava/lang/String;Ljava/lang/Runnable;)V

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

    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
