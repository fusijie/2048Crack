.class final enum Lcom/nextpeer/android/NextpeerPushService$QualityOfService;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QualityOfService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/NextpeerPushService$QualityOfService;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Level0:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

.field public static final enum Level1:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

.field public static final enum Level2:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

.field private static final synthetic b:[Lcom/nextpeer/android/NextpeerPushService$QualityOfService;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    const-string v1, "Level0"

    invoke-direct {v0, v1, v2, v2}, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level0:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    const-string v1, "Level1"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level1:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    const-string v1, "Level2"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level2:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level0:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level1:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->Level2:Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->b:[Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerPushService$QualityOfService;
    .locals 1

    const-class v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/NextpeerPushService$QualityOfService;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->b:[Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/NextpeerPushService$QualityOfService;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/NextpeerPushService$QualityOfService;->a:I

    return v0
.end method
