.class final Lcom/b/a/ab;
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
.field final synthetic a:Lcom/b/a/aa;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/b/a/ao$aa;

.field private final synthetic e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/b/a/aa;Ljava/lang/String;Landroid/content/Context;Lcom/b/a/ao$aa;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/ab;->a:Lcom/b/a/aa;

    iput-object p2, p0, Lcom/b/a/ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/ab;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/b/a/ab;->d:Lcom/b/a/ao$aa;

    iput-object p5, p0, Lcom/b/a/ab;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/ab;->b:Ljava/lang/String;

    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ab;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ab;->d:Lcom/b/a/ao$aa;

    iget-object v2, p0, Lcom/b/a/ab;->a:Lcom/b/a/aa;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/b/a/ao$aa;->a(Lcom/b/a/ao;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/b/a/ab;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/ab;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
