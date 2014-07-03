.class final Lcom/nextpeer/android/bl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "userUuid"
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "gameId"
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "capabilities"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/bl;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nextpeer/android/bl;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nextpeer/android/bl;->c:I

    return-void
.end method
