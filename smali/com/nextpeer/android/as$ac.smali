.class final enum Lcom/nextpeer/android/as$ac;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/as$ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/as$ac;

.field public static final enum b:Lcom/nextpeer/android/as$ac;

.field public static final enum c:Lcom/nextpeer/android/as$ac;

.field private static final synthetic e:[Lcom/nextpeer/android/as$ac;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/as$ac;

    const-string v1, "NPPluginType_Native"

    invoke-direct {v0, v1, v4, v2}, Lcom/nextpeer/android/as$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$ac;->a:Lcom/nextpeer/android/as$ac;

    new-instance v0, Lcom/nextpeer/android/as$ac;

    const-string v1, "NPPluginType_Unity"

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/as$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$ac;->b:Lcom/nextpeer/android/as$ac;

    new-instance v0, Lcom/nextpeer/android/as$ac;

    const-string v1, "NPPluginType_Cocos2dx"

    invoke-direct {v0, v1, v3, v5}, Lcom/nextpeer/android/as$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$ac;->c:Lcom/nextpeer/android/as$ac;

    new-array v0, v5, [Lcom/nextpeer/android/as$ac;

    sget-object v1, Lcom/nextpeer/android/as$ac;->a:Lcom/nextpeer/android/as$ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/as$ac;->b:Lcom/nextpeer/android/as$ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/as$ac;->c:Lcom/nextpeer/android/as$ac;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/as$ac;->e:[Lcom/nextpeer/android/as$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/as$ac;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/as$ac;
    .locals 1

    const-class v0, Lcom/nextpeer/android/as$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/as$ac;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/as$ac;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/as$ac;->e:[Lcom/nextpeer/android/as$ac;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/as$ac;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/as$ac;->d:I

    return v0
.end method
