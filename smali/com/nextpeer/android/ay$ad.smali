.class final Lcom/nextpeer/android/ay$ad;
.super Lcom/nextpeer/android/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ad"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ay;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-direct {p0}, Lcom/nextpeer/android/hn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/ay;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/ay$ad;-><init>(Lcom/nextpeer/android/ay;)V

    return-void
.end method


# virtual methods
.method public final onFetchUserProfileFailed()V
    .locals 2

    const-string v0, "NPFBUserLoginBroker - failed fetching profile."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->d(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/ay$ad;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->d(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/ay$ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v0}, Lcom/nextpeer/android/ay;->e(Lcom/nextpeer/android/ay;)V

    return-void
.end method

.method public final onFetchUserProfileSuccessfully(Lcom/nextpeer/android/hl;)V
    .locals 2

    const-string v0, "NPFBUserLoginBroker - success fetching profile."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v0}, Lcom/nextpeer/android/ay;->c(Lcom/nextpeer/android/ay;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->d(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/ay$ad;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->d(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/ay$ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ay$ad;->a:Lcom/nextpeer/android/ay;

    invoke-static {v0}, Lcom/nextpeer/android/ay;->e(Lcom/nextpeer/android/ay;)V

    return-void
.end method
