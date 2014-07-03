.class public final Lcom/nextpeer/android/bu;
.super Lcom/nextpeer/android/bm;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/bm;-><init>()V

    const-string v0, "matchId"

    invoke-static {p1, v0}, Lcom/nextpeer/android/aq;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/bu;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/nextpeer/android/bp;)V
    .locals 3

    invoke-direct {p0}, Lcom/nextpeer/android/bm;-><init>()V

    iget-object v0, p1, Lcom/nextpeer/android/bp;->a:Ljava/util/Map;

    const-string v1, "matchId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/aq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/bu;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "matchId"

    iget v1, p0, Lcom/nextpeer/android/bu;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public final a()Lcom/nextpeer/android/bw;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/bw;->e:Lcom/nextpeer/android/bw;

    return-object v0
.end method
