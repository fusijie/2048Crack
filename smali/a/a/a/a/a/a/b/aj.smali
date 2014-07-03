.class public final La/a/a/a/a/a/b/aj;
.super La/a/a/a/a/a/b/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ab;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "Ping"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final m_()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final n_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
