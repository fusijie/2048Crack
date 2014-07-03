.class final Lcom/nextpeer/android/av$aa;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/nextpeer/android/av$ab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/av;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/av;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/av$aa;->a:Lcom/nextpeer/android/av;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/av;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/av$aa;-><init>(Lcom/nextpeer/android/av;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/a/a/ak;

    invoke-direct {v2}, Lcom/a/a/ak;-><init>()V

    new-instance v3, Lcom/nextpeer/android/ax;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/ax;-><init>(Lcom/nextpeer/android/av$aa;)V

    invoke-virtual {v3}, Lcom/nextpeer/android/ax;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v4, Lcom/a/a/ba;

    invoke-direct {v4}, Lcom/a/a/ba;-><init>()V

    invoke-static {v0}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    check-cast v0, Lcom/a/a/ay;

    const-string v4, "friends"

    invoke-virtual {v0, v4}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nextpeer/android/av$aa;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v0, v3}, Lcom/a/a/ak;->a(Lcom/a/a/av;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse friends json value with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/av$aa;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const-string v0, "Failed while parsing fb friends list"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/av$aa;->a:Lcom/nextpeer/android/av;

    invoke-static {v0}, Lcom/nextpeer/android/av;->a(Lcom/nextpeer/android/av;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/av$aa;->a:Lcom/nextpeer/android/av;

    invoke-static {v0, p1}, Lcom/nextpeer/android/av;->a(Lcom/nextpeer/android/av;Ljava/util/List;)V

    goto :goto_0
.end method
