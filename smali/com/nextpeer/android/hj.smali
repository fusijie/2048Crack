.class final Lcom/nextpeer/android/hj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nextpeer/android/hl$ad$ab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/hh;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/hh;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/hj;->a:Lcom/nextpeer/android/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/nextpeer/android/hl$ad$ab;

    check-cast p2, Lcom/nextpeer/android/hl$ad$ab;

    invoke-virtual {p1}, Lcom/nextpeer/android/hl$ad$ab;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/nextpeer/android/hl$ad$ab;->f()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
