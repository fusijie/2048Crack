.class public La/a/a/a/a/ag;
.super Ljava/lang/Object;


# static fields
.field static final c:Ljava/lang/String;


# instance fields
.field protected a:La/a/a/a/a/ae;

.field protected b:J

.field public d:La/a/a/a/a/b/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/ag;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/ah;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/a/a/a/a/ag;->b:J

    sget-object v0, La/a/a/a/a/ag;->c:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/ag;->d:La/a/a/a/a/b/ab;

    new-instance v0, La/a/a/a/a/ae;

    invoke-direct {v0, p1, p2, p3}, La/a/a/a/a/ae;-><init>(Ljava/lang/String;Ljava/lang/String;La/a/a/a/a/ah;)V

    iput-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/a/a/a/a/ao;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    invoke-virtual {v0, p1}, La/a/a/a/a/ae;->a(Ljava/lang/String;)La/a/a/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    invoke-virtual {v0}, La/a/a/a/a/ae;->b()La/a/a/a/a/ad;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/ad;->a()V

    return-void
.end method

.method public final a(La/a/a/a/a/af;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    invoke-virtual {v0, p1}, La/a/a/a/a/ae;->a(La/a/a/a/a/af;)V

    return-void
.end method

.method public final a(La/a/a/a/a/ai;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    invoke-virtual {v0, p1}, La/a/a/a/a/ae;->a(La/a/a/a/a/ai;)La/a/a/a/a/ad;

    move-result-object v0

    iget-wide v1, p0, La/a/a/a/a/ag;->b:J

    invoke-interface {v0, v1, v2}, La/a/a/a/a/ad;->a(J)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ag;->a:La/a/a/a/a/ae;

    invoke-virtual {v0}, La/a/a/a/a/ae;->c()Z

    move-result v0

    return v0
.end method
