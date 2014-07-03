.class final Lcom/b/a/af;
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
.field final synthetic a:Lcom/b/a/ae;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/b/a/ao$aa;

.field private final synthetic e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/b/a/ae;Landroid/content/Context;Ljava/lang/String;Lcom/b/a/ao$aa;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/af;->a:Lcom/b/a/ae;

    iput-object p2, p0, Lcom/b/a/af;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/b/a/af;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/b/a/af;->d:Lcom/b/a/ao$aa;

    iput-object p5, p0, Lcom/b/a/af;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/af;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/af;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/af;->d:Lcom/b/a/ao$aa;

    iget-object v2, p0, Lcom/b/a/af;->a:Lcom/b/a/ae;

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

    invoke-direct {p0}, Lcom/b/a/af;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/af;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
