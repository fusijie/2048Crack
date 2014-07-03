.class public final La/a/a/a/a/ao;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/a/a/a/a/aa;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a/a/a/a/a/aa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a/a/a/a/ao;->a:La/a/a/a/a/a/aa;

    iput-object p1, p0, La/a/a/a/a/ao;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/a/ak;)La/a/a/a/a/aj;
    .locals 4

    new-instance v0, La/a/a/a/a/aj;

    iget-object v1, p0, La/a/a/a/a/ao;->a:La/a/a/a/a/a/aa;

    invoke-virtual {v1}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v1

    invoke-interface {v1}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/aj;-><init>(B)V

    iget-object v1, v0, La/a/a/a/a/aj;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1, p1}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/ak;)V

    iget-object v1, p0, La/a/a/a/a/ao;->a:La/a/a/a/a/a/aa;

    new-instance v2, La/a/a/a/a/a/b/ao;

    iget-object v3, p0, La/a/a/a/a/ao;->b:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, La/a/a/a/a/a/b/ao;-><init>(Ljava/lang/String;La/a/a/a/a/ak;)V

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a/aa;->b(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    iget-object v1, v0, La/a/a/a/a/aj;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->f()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ao;->b:Ljava/lang/String;

    return-object v0
.end method
