.class public La/a/a/a/a/an;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/ad;


# instance fields
.field public a:La/a/a/a/a/a/ap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    new-instance v0, La/a/a/a/a/a/ap;

    invoke-direct {v0}, La/a/a/a/a/a/ap;-><init>()V

    iput-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a/ap;->a(J)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, p1, p2}, La/a/a/a/a/a/ap;->a(J)V

    return-void
.end method

.method public final a(La/a/a/a/a/aa;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/aa;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/ap;->a(Ljava/lang/Object;)V

    return-void
.end method
