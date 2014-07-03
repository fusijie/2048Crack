.class final Lcom/nextpeer/android/do$aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/au",
        "<",
        "Lcom/nextpeer/android/do;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/av;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v10

    sget-object v9, Lcom/nextpeer/android/do$ac;->a:Lcom/nextpeer/android/do$ac;

    const/16 v8, -0x3e7

    const-string v1, "name"

    invoke-virtual {v10, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v1, "imageUrl"

    invoke-virtual {v10, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v6

    :goto_1
    const-string v1, "recording"

    invoke-virtual {v10, v1}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/a/a/av;->e()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_2
    move v7, v1

    :goto_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v1, v3

    const-string v5, "userId"

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string v5, "userUuid"

    aput-object v5, v1, v2

    array-length v2, v1

    :goto_4
    if-lt v3, v2, :cond_2

    move-object v5, v0

    :goto_5
    const-string v0, "score"

    invoke-virtual {v10, v0}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/a/a/av;->e()I

    move-result v1

    :goto_6
    const-string v0, "matchHighScore"

    invoke-virtual {v10, v0}, Lcom/a/a/ay;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "matchHighScore"

    invoke-virtual {v10, v0}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->e()I

    move-result v2

    :goto_7
    const-string v0, "status"

    invoke-virtual {v10, v0}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/a/a/av;->e()I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/do$ac;->a(I)Lcom/nextpeer/android/do$ac;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/nextpeer/android/do$ac;->a:Lcom/nextpeer/android/do$ac;

    :cond_0
    :goto_8
    new-instance v0, Lcom/nextpeer/android/do;

    invoke-direct/range {v0 .. v7}, Lcom/nextpeer/android/do;-><init>(IILcom/nextpeer/android/do$ac;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v10, v5}, Lcom/a/a/ay;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10, v5}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move-object v3, v9

    goto :goto_8

    :cond_5
    move v2, v1

    goto :goto_7

    :cond_6
    move v1, v8

    goto :goto_6

    :cond_7
    move v7, v3

    goto :goto_3

    :cond_8
    move-object v6, v0

    goto :goto_1

    :cond_9
    move-object v4, v0

    goto/16 :goto_0
.end method
