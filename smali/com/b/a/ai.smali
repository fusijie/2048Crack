.class final Lcom/b/a/ai;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/ah;

.field private final synthetic b:Lcom/b/a/ao$aa;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/b/a/ah;Lcom/b/a/ao$aa;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/ai;->a:Lcom/b/a/ah;

    iput-object p2, p0, Lcom/b/a/ai;->b:Lcom/b/a/ao$aa;

    iput-object p3, p0, Lcom/b/a/ai;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/b/a/ai;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/ai;->b:Lcom/b/a/ao$aa;

    iget-object v1, p0, Lcom/b/a/ai;->a:Lcom/b/a/ah;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/net/URI;

    iget-object v5, p0, Lcom/b/a/ai;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/b/a/ao$aa;->a(Lcom/b/a/ao;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/b/a/ai;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/ai;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
