.class final Lcom/b/a/ar;
.super Lcom/b/a/aq$aa;


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I

.field private final synthetic f:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/a/ar;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/b/a/ar;->d:Ljava/lang/String;

    iput p4, p0, Lcom/b/a/ar;->e:I

    iput p5, p0, Lcom/b/a/ar;->f:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/aq$aa;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ao;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-boolean v0, Lcom/b/a/aq;->c:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/b/a/ao;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/b/a/ao;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, p2, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {v1, v2}, Lcom/b/a/aq;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    move-object p3, v0

    :cond_3
    iget-object v0, p0, Lcom/b/a/ar;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/ar;->d:Ljava/lang/String;

    iget v2, p0, Lcom/b/a/ar;->e:I

    iget v3, p0, Lcom/b/a/ar;->f:I

    invoke-static {v0, v1, p3, v2, v3}, Lcom/b/a/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->a:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/b/a/ao;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/b/a/ao;->a()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/b/a/ar;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    throw v0
.end method
