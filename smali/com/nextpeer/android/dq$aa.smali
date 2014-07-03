.class final Lcom/nextpeer/android/dq$aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nextpeer/android/dq;",
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
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/nextpeer/android/dq;

    check-cast p2, Lcom/nextpeer/android/dq;

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p2, Lcom/nextpeer/android/dq;->b:I

    iget v1, p1, Lcom/nextpeer/android/dq;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
