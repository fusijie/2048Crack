.class public final enum Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NextpeerRankingDisplayPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum BOTTOM_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum BOTTOM_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum TOP:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum TOP_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field public static final enum TOP_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

.field private static final synthetic a:[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v6}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v7}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM_LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->TOP_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->BOTTOM_RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->RIGHT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->LEFT:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->a:[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;
    .locals 1

    const-class v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;->a:[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayPosition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
