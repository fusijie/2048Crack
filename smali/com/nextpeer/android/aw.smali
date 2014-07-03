.class final Lcom/nextpeer/android/aw;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/av;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/av;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/aw;->a:Lcom/nextpeer/android/av;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Fetched FB Friends list, start JSON parse"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/aw;->a:Lcom/nextpeer/android/av;

    new-instance v1, Lcom/nextpeer/android/av$aa;

    iget-object v2, p0, Lcom/nextpeer/android/aw;->a:Lcom/nextpeer/android/av;

    invoke-direct {v1, v2, v3}, Lcom/nextpeer/android/av$aa;-><init>(Lcom/nextpeer/android/av;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/av$aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/av;->a(Lcom/nextpeer/android/av;Landroid/os/AsyncTask;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed while fetching fb friends list with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/aw;->a:Lcom/nextpeer/android/av;

    invoke-static {v0}, Lcom/nextpeer/android/av;->a(Lcom/nextpeer/android/av;)V

    return-void
.end method
