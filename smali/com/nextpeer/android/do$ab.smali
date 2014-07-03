.class final Lcom/nextpeer/android/do$ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
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
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, -0x3e7

    check-cast p1, Lcom/nextpeer/android/do;

    check-cast p2, Lcom/nextpeer/android/do;

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    move v2, v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/nextpeer/android/do;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/nextpeer/android/do;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    sget-object v4, Lcom/nextpeer/android/do$ac;->f:Lcom/nextpeer/android/do$ac;

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    iget-object v4, p2, Lcom/nextpeer/android/do;->a:Lcom/nextpeer/android/do$ac;

    sget-object v5, Lcom/nextpeer/android/do$ac;->f:Lcom/nextpeer/android/do$ac;

    if-ne v4, v5, :cond_5

    move v4, v1

    :goto_2
    if-eq v0, v4, :cond_1

    if-nez v0, :cond_6

    move v2, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/nextpeer/android/do;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/nextpeer/android/do;->a()I

    move-result v4

    if-eq v0, v5, :cond_8

    if-ne v4, v5, :cond_a

    :cond_8
    if-ne v0, v5, :cond_9

    if-eq v4, v5, :cond_9

    move v2, v1

    goto :goto_0

    :cond_9
    if-eq v0, v5, :cond_1

    if-ne v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_a
    sub-int v2, v4, v0

    goto :goto_0
.end method
