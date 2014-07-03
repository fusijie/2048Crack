.class final Lcom/b/a/at;
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
.field private final synthetic a:Lcom/b/a/aq$aa;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/b/a/aq$aa;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/at;->a:Lcom/b/a/aq$aa;

    iput-object p2, p0, Lcom/b/a/at;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/a/at;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/at;->a:Lcom/b/a/aq$aa;

    iget-object v1, p0, Lcom/b/a/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v2, v1}, Lcom/b/a/aq$aa;->a(Lcom/b/a/ao;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/at;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
