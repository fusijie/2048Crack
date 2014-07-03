.class final Lcom/nextpeer/android/dr$aa;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "aa"
.end annotation

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
.field final synthetic a:Lcom/nextpeer/android/dr;

.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/nextpeer/android/cj;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/dr;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/cj;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/dr$aa;->b:Z

    iput-object p2, p0, Lcom/nextpeer/android/dr$aa;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/dr$aa;->d:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/nextpeer/android/dr$aa;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/nextpeer/android/dr$aa;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/nextpeer/android/dr$aa;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/nextpeer/android/dr$aa;->h:Lcom/nextpeer/android/cj;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cf;->a(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/cf;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connecting to room host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/dr$aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dr$aa;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dr$aa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dr$aa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dr$aa;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    new-instance v0, Lcom/nextpeer/android/cf;

    iget-object v1, p0, Lcom/nextpeer/android/dr$aa;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/dr$aa;->d:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nextpeer/android/dr$aa;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/nextpeer/android/dr$aa;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/nextpeer/android/dr$aa;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/nextpeer/android/dr$aa;->h:Lcom/nextpeer/android/cj;

    invoke-direct/range {v0 .. v6}, Lcom/nextpeer/android/cf;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/cj;)V

    invoke-static {v7, v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/cf;)V

    iget-object v0, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/cf;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/dr$aa;->b:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v8

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect to the server with the following error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/dr$aa;->b:Z

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/dr$aa;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/dr$aa;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/cf;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dr$aa;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->n(Lcom/nextpeer/android/dr;)V

    goto :goto_0
.end method
