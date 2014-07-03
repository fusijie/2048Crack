.class public La/a/a/a/a/a/b/ag;
.super Ljava/io/OutputStream;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:La/a/a/a/a/b/ab;

.field private c:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/b/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/b/ag;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    sget-object v0, La/a/a/a/a/a/b/ag;->b:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/b/ag;->a:La/a/a/a/a/b/ab;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/a/a/b/au;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->j()[B

    move-result-object v0

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->l_()[B

    move-result-object v1

    iget-object v2, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    array-length v2, v1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->a:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/b/ag;->b:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ag;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method
